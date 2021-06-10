class CommentsController < ApplicationController
    def show
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
    end

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        redirect_to post_path(@post)
    end

    def edit
        @comment = Comment.find(params[:id])
    end

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        @post = @comment.post
        redirect_to post_path(@post)
    end

    def destroy
        @comment = Comment.find(params[:id])
        @post = @comment.post
        @comment.destroy
        redirect_to post_path(@post)
    end

    private
        def comment_params
            params.require(:comment).permit(:user, :body)
        end
end
