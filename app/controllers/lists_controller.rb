class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new
  end

  def create #createアクション追加！
    list = List.new(list_params) # 1. データを受け取り新規登録するためのインスタンス作成
    list.save # 2. データをデータベースに保存するためのsaveメソッド実行
    redirect_to list_path(list.id) # 詳細画面へリダイレクト
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id]) # レコードを1件だけ取得
  end

  def edit
  end

  private
  # ストロングパラメータで強くなる
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
