<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Company;
use App\Models\Employee;
use DB;
class EmployeesController extends Controller
{
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        
        // $Employee = Employee::where('status', 0)
        // ->orderBy('id')
        //        ->paginate(10);
        //   return $Employee; 
        
           $Employee = DB::table('employees')
            ->join ('companies', 'companies.id' , "=", 'employees.company_id')
           ->select('employees.id as id','first_name','last_name','companies.name as name','employees.email as email','phone')
           ->orderBy('id')
           ->paginate(10);
           
        return view('employees.index', compact('Employee'))->with('no', 1);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $Company = Company::where('status', 0)
        ->orderBy('id')
        ->get();
        
        return view('employees.create', compact('Company'));
        
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
            'first_name' => 'required|string' ,
            'last_name' => 'required|string' ,
            'company_id' => 'required' ,
            'email' => 'email|unique:employees',
            'phone' => 'required'   
       ]);

    try{ 
        $Employee = new Employee;

        $Employee->first_name  = $request->first_name;
        $Employee->last_name  = $request->last_name;
        $Employee->company_id  = $request->company_id;
        $Employee->email  = $request->email;
        $Employee->phone  = $request->phone;
        $Employee->user_id    = 1;
         
        $Employee->save();
       
        return redirect('/employees');


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
         
        $Employee = Employee::where('id', $id)->get();
        //return  dump($Company);

        $Company = Company::where('status', 0)
        ->orderBy('id')
        ->get();
         
        return view('employees.edit', compact('Employee','Company'));
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

        

        $validatedData = $request->validate([
            'first_name' => 'required|string' ,
            'last_name' => 'required|string' ,
            'company_id' => 'required' ,
            'email' => 'email',
            'phone' => 'required'   
       ]);

    try{ 
        $Employee = Employee::find($id);
         
        $Employee->first_name  = $request->first_name;
        $Employee->last_name  = $request->last_name;
        $Employee->company_id  = $request->company_id;
        $Employee->email  = $request->email;
        $Employee->phone  = $request->phone;
        $Employee->user_id    = 1;
         
        $Employee->save();
       
        return redirect('/employees');


       } catch(\Illuminate\Database\QueryException  $ex) 
       {


        dd($ex->getMessage()); 
          
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
        $Employee = Employee::find($id);
        $Employee->delete();
        return redirect('/employees');
    }
}
