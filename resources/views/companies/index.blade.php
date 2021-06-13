@extends('layouts.app')

@section('content')
<div class="container">
<a href="{{url('/companies/create')}}" class="btn btn-success">Create New Company</a>
   <hr/> 
   <h2>Companies List</h2>
         
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>Sr#</th>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Logo</th>
        <th>Website</th>
        <th>Option</th>
      </tr>
    </thead>



    <tbody>
    @foreach($Company  as $Companies)
<tr>
    <td>{{ $no++ }}</td>
    <td>{{$Companies->id}}</td>
    <td>{{$Companies->name}}</td>
    <td>{{$Companies->email}}</td>
    <td><img src="{{ asset($Companies->logo) }}"  width="50" /></td>
    <td><a target="_blank" href="{{$Companies->website}}" >{{$Companies->website}}</a></td>
    <td>
    <a href="{{ url('/companies/edit/'.$Companies->id)}}" class="btn btn-info">Edit</a>
    <a href="{{ url('/companies/delete/'.$Companies->id)}}" class="btn btn-danger">Delete</a>
    </td>

</tr>
    @endforeach
    </tbody>
  </table>
  <span>
  {{ $Company->links('pagination::bootstrap-4') }}
  
  </span> 
</div>

@endsection
