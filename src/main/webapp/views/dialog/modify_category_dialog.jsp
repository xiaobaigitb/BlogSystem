<%--
  Created by IntelliJ IDEA.
  User: DuanJiaNing
  Date: 2018/2/17
  Time: 17:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>

<div class="modal fade" tabindex="-1" role="dialog" id="modifyCategoryDialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content dialog-title-container">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title dialog-title">编辑类别</h4>
            </div>

            <div class="modal-body dialog-body">
                <div class="row">
                    <div class="col-md-4">
                        <span class="glyphicon glyphicon glyphicon-chevron-up center-icon" aria-hidden="true"
                              onclick="$('#modifyCategoryListGroup').animate({scrollTop: 0}, 300);"></span>
                        <br>
                        <br>
                        <div class="list-group" style="max-height: 300px;overflow: auto;margin: 0 50px;"
                             id="modifyCategoryListGroup"></div>
                        <br>
                        <span class="glyphicon glyphicon glyphicon-chevron-down center-icon" aria-hidden="true"
                              onclick="$('#modifyCategoryListGroup').animate({scrollTop: $('#modifyCategoryListGroup').css('height')}, 300);"></span>
                    </div>

                    <div class="col-md-8" style="min-height: 400px;">
                        <p class="text-center lead">
                            <small class="indicator" style="font-weight: bold" id="modifyCategoryAsEdit"
                                   onclick="toggleDivState('chooseEditCategory','chooseDeleteCategory',
                                   'modifyCategoryAsEdit','modifyCategoryAsDelete','modifyCategoryErrorMsg','');
                                   clearDiv('showChoosedCategory');clearDiv('showChoosedCategoryBewrite');selectCategoryModel=1;"
                            >编辑
                            </small>&nbsp;&nbsp;<span class="vertical-line">|</span>&nbsp;&nbsp;<small
                                class="indicator" id="modifyCategoryAsDelete"
                                onclick="toggleDivState('chooseDeleteCategory','chooseEditCategory','modifyCategoryAsDelete',
                                'modifyCategoryAsEdit','modifyCategoryErrorMsg','');clearDiv('showChoosedCategory');
                                clearDiv('showChoosedCategoryBewrite');selectCategoryModel=2;">
                            删除
                        </small>
                        </p>

                        <div class="row">
                            <div class="col-md-7">
                                <small style="color: darkgray;">已选类别</small>
                                <hr class="default-line">
                                <p id="showChoosedCategory" style="line-height: 24px;min-height: 120px"></p>
                            </div>
                            <div class="col-md-5">
                                <small style="color: darkgray">类别说明</small>
                                <br>
                                <p id="showChoosedCategoryBewrite" style="max-height: 230px;overflow-y: auto"></p>
                            </div>
                        </div>

                        <div id="chooseEditCategory">
                            <div class="form-group">
                                <label>类别名</label><br>
                                <input type="text" placeholder="类别名" id="editCategoryTitle" class="form-input">
                                <br>
                                <br>

                                <label>说明</label><br>
                                <input type="text" placeholder="说明" class="form-input" id="editCategoryBewrite">

                                <br>
                                <br>
                                <button class="button-success" id="modifyEditCategoryBtn"
                                        onclick="exeCategoryUpdate(this,${sessionScope['bloggerId']},funWhenEditCategorySuccess)">
                                    提交
                                </button>
                            </div>
                        </div>

                        <div id="chooseDeleteCategory" style="display: none;">
                            <br>
                            <p>
                                <small>可选择</small>
                                <b>&nbsp;多个&nbsp;</b>
                                <small>类别。</small>
                            </p>
                            <button class="button-dangerous" id="modifyDeleteCategoryBtn"
                                    onclick="exeCategoryDelete(this,${sessionScope['bloggerId']},funWhenDeleteCategorySuccess)">
                                删除
                            </button>
                        </div>

                        <br>
                        <span class="error-msg" id="modifyCategoryErrorMsg"></span>

                    </div>
                </div>

            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script src="/js/dialog/modify_category_dialog.js"></script>
</body>
</html>
