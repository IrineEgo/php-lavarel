@extends('layouts.app')

@section('content')
<div class="row">
  <div class="col-md-8 col-md-offset-2">
    <div class="panel panel-default">
      <div class="panel-body">
        <h2 class="chahge">Изменить пароль администратора</h2>
        <form class="form-horizontal" role="form" action="{{ route('user.update', [$user->id]) }}" method="POST">
          {{ csrf_field() }}
          {{ method_field('PUT') }}
          <div class="form-group">
            <label for="password" class="col-sm-3 control-label">Пароль</label>
            <div class="col-sm-9">
              <input type="password" name="password" required class="form-control" id="password">
            </div>
          </div>

          <div class="form-group">
            <label for="password" class="col-sm-3 control-label">Повторите пароль</label>
            <div class="col-sm-9">
              <input type="password" name="password_repeat" required class="form-control" id="password">
            </div>
          </div>

          <button type="submit" class="col-sm-12 btn btn-primary">Изменить</button>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection
