@extends('layouts.app')

@section('content')
  <div class="admin-content">
  <h2>Список администраторов</h2>
  <table class="table table-condensed">
    <tr>
      <th>#</th>
      <th>Логин</th>
      <th>Емайл</th>
      <th>Изменить пароль</th>
      <th>Удалить</th>
    </tr>
    @foreach ($users as $user)
    <tr>
      <td>{{ $loop->iteration }}</td>
      <td>{{ $user->name }}</td>
      <td>{{ $user->email }}</td>
      <td><a class="btn btn-edit btn-xs" href="{{ route('user.edit', [$user->id]) }}" role="button">&gt;</a></td>
      <td><form action="{{route('user.destroy',$user->id)}}" method="POST">
          {{csrf_field()}}
          {{ method_field('DELETE') }}
          <button type="submit" class="col-sm-4 col-sm-offset-2 btn btn-danger">&gt;</button>
        </form></td>
    </tr>
    @endforeach
  </table>
    <p><a class="col-md-12 btn btn-primary" href="{{ route('user.create') }}">Добавить администратора</a></p>
  </div>
@endsection
