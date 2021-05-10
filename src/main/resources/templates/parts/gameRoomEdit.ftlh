<#import "common.ftlh" as c>
<#include "security.ftlh">

<@c.page>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#edit">
    Редактировать
</button>

<!-- Modal -->
<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="editTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editTitle">Создание игротеки</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="text" class="form-control" name="nameGameRoom" placeholder="Название игротеки">
                    </div>
                    <div class="form-group">
                        <input type="datetime-local" class="form-control" name="dateGameRoom" placeholder="Дата игротеки">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="cityGameRoom" placeholder="Город">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="adressGameRoom" placeholder="Адрес">
                    </div>
                    <div class="form-group">
                        <textarea rows="3" type="text" class="form-control" name="discriptionGameRoom" placeholder="Описание"></textarea>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="countPeople" placeholder="Ожидаемое количество людей">
                    </div>
                    <input type="hidden" class="form-control" name="_csrf" value="${_csrf.token}"/>
                    <div class="form-group">
                        <div class="custom-file">
                            <input type="file" name="filenameGameRoom" id="customFile">
                            <label class="custom-file-label" for="customFile">Выберите файл</label>
                        </div>
                    </div>
                    </form-->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Закрыть</button>
                <button type="submit" class="btn btn-primary">Сохранить игротеку</button>
            </div>
        </div>
    </div>
</div>

</@c.page>



