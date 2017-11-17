.class Lcom/example/project/sheep$1;
.super Ljava/lang/Object;
.source "sheep.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/project/sheep;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/project/sheep;


# direct methods
.method constructor <init>(Lcom/example/project/sheep;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/project/sheep$1;->this$0:Lcom/example/project/sheep;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mediaPlayer"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/example/project/sheep$1;->this$0:Lcom/example/project/sheep;

    #getter for: Lcom/example/project/sheep;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/example/project/sheep;->access$0(Lcom/example/project/sheep;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 53
    iget-object v0, p0, Lcom/example/project/sheep$1;->this$0:Lcom/example/project/sheep;

    #getter for: Lcom/example/project/sheep;->myVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/example/project/sheep;->access$1(Lcom/example/project/sheep;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/example/project/sheep$1;->this$0:Lcom/example/project/sheep;

    #getter for: Lcom/example/project/sheep;->position:I
    invoke-static {v1}, Lcom/example/project/sheep;->access$2(Lcom/example/project/sheep;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 54
    iget-object v0, p0, Lcom/example/project/sheep$1;->this$0:Lcom/example/project/sheep;

    #getter for: Lcom/example/project/sheep;->position:I
    invoke-static {v0}, Lcom/example/project/sheep;->access$2(Lcom/example/project/sheep;)I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/example/project/sheep$1;->this$0:Lcom/example/project/sheep;

    #getter for: Lcom/example/project/sheep;->myVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/example/project/sheep;->access$1(Lcom/example/project/sheep;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/example/project/sheep$1;->this$0:Lcom/example/project/sheep;

    #getter for: Lcom/example/project/sheep;->myVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/example/project/sheep;->access$1(Lcom/example/project/sheep;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0
.end method
