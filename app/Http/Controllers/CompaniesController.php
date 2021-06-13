<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Company;
class CompaniesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        
        $Company = Company::where('status', 0)
               ->orderBy('id')
               ->paginate(10);
         
        return view('companies.index', compact('Company'))->with('no', 1);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        
        return view('companies.create');
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $validatedData = $request->validate([
            'name' => 'required' ,
            'email' => 'email|unique:companies',
            'logo' => 'required'  
       ]);

       if ($request->hasFile('logo')) {
            
        $logo = $request->file('logo');
        $name = date('Ymd-His').'-'.time().'.'.$logo->getClientOriginalExtension();
        $LogoPath = public_path('/CompaniesLogos');
        $logo->move($LogoPath, $name);
     $logo_stor = 'CompaniesLogos/'.$name;
    }




    try{ 
        $Company = new Company;

        $Company->name  = $request->name;
        $Company->email  = $request->email;
        $Company->logo  = $logo_stor;
        $Company->website   = $request->website;
        $Company->user_id    = 1;
         
        $Company->save();
       
        return redirect('/companies');


       } catch(Exception $exception) 
       {
          if($exception->errorInfo[0] == 23000 && $exception->errorInfo[1] == 1062 ){
              return 'Duplicate.';
          }else{
              return 'Error';
          }
       }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         
        $Company = Company::where('id', $id)->get();
        //return  dump($Company);
         
        return view('companies.edit', compact('Company'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       // return $id;
        
        $validatedData = $request->validate([
            'name' => 'required' ,
            'email' => 'email' 
       ]);

       
       if ($request->hasFile('logo')) {
            
        $logo = $request->file('logo');
        $name = date('Ymd-His').'-'.time().'.'.$logo->getClientOriginalExtension();
        $LogoPath = public_path('/CompaniesLogos');
        $logo->move($LogoPath, $name);
     $logo_stor = 'CompaniesLogos/'.$name;
    }else{
        $logo_stor = $request->old_logo;
    }




    try{ 
        $Company = Company::find($id);

        $Company->name  = $request->name;
        $Company->email  = $request->email;
        $Company->logo  = $logo_stor;
        $Company->website   = $request->website;
        $Company->user_id    = 1;
         
        $Company->save();
       
        return redirect('/companies');


       } catch(Exception $exception) 
       {
          if($exception->errorInfo[0] == 23000 && $exception->errorInfo[1] == 1062 ){
              return 'Duplicate.';
          }else{
              return 'Error';
          }
       }
         
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //return $id;
        $Company = Company::find($id);
        $Company->delete();
        return redirect('/companies');
    }
}
