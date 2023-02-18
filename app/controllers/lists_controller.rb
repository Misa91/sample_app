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
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end

  def destroy
    list = List.find(params[:id])  # データ（レコード）を1件取得
    list.destroy  # データ（レコード）を削除
    redirect_to '/lists'  # 投稿一覧画面へリダイレクト
  end

  private
  # ストロングパラメータで強くなる
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end

end
