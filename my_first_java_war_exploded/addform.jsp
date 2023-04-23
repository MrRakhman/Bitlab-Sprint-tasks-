<form action="/add-task" method="post">
    <div class="row">
        <div class="col-12">
            <label>TASK NAME : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <input type="text" class="form-control" name="task_name">
        </div>
    </div>
    <div class="row mt-3">
        <div class="col-12">
            <label>TASK DESCRIPTION : </label>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <textarea name="task_description" class="form-control" rows="5"></textarea>
        </div>
    </div>
    <div class="row mt-2">
        <div class="col-12">
            <label>TASK DEADLINE : </label>
        </div>
        <div class="col-12 mt-2">
            <input class="form-control" type="date" id="task_deadline" name="task_deadline">
        </div>
    </div>
    <input type="hidden" name="task_status" value="Not Completed">
    <div class="row mt-3">
        <div class="col-12">
            <button class="btn btn-success">ADD TASK</button>
        </div>
    </div>
</form>