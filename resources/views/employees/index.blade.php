@extends('layouts.app')

@section('content')
<div class="container">
<a href="{{url('/employees/create')}}" class="btn btn-success">New Employee</a>
   <hr/> 
   <h2>Employees List</h2>
         
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Page Sr#</th>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Company</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Option</th>
      </tr>
    </thead>



    <tbody>
    
    @foreach($Employee  as $Employees)
<tr>
    <td>{{ $no++ }}</td>
    <td>{{ $Employees->id }}</td>
    <td>{{$Employees->first_name}}</td>
    <td>{{$Employees->last_name}}</td>
    <td>{{$Employees->name}} </td>
    
    
    <td>{{$Employees->email }}</td>
    <td>{{$Employees->phone}}</td>
     
    <td>
    <a href="{{ url('/employees/edit/'.$Employees->id)}}" class="btn btn-info">Edit</a>
    <a href="{{ url('/employees/delete/'.$Employees->id)}}" class="btn btn-danger">Delete</a>
    </td>

</tr>
    @endforeach
    </tbody>
  </table>
   <span>
  {{ $Employee->links('pagination::bootstrap-4') }}
  
  </span> 
 
</div>

@endsection
