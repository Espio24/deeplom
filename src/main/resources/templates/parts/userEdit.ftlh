<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalScrollable">
    Редактировать
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalScrollableTitle">Редактировани пользователя</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="text" class="form-control" name="lastName" placeholder="Фамилия">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="firstName" placeholder="Имя">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="secondName" placeholder="Отчество">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="password" placeholder="Пароль">
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" name="email" placeholder="email">
                    </div>

                    <input type="hidden" class="form-control" name="_csrf" value="${_csrf.token}"/>
                    <div class="form-group">
                        <div class="custom-file">
                            <input type="file" name="filenameUser" id="customFile">
                            <label class="custom-file-label" for="customFile">Выберите файл</label>
                        </div>
                    </div>
                </form-->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
                <button type="submit" class="btn btn-primary">Сохранить</button>
            </div>
        </div>
    </div>
</div>





