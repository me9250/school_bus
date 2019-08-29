@extends('crudbooster::admin_template')
@section('content')
@if(CRUDBooster::myPrivilegeId() == 1 || CRUDBooster::myPrivilegeId() == 2 )


year total 


@endif
@endsection
