.class Lcom/example/project/muffet$1;
.super Ljava/lang/Object;
.source "muffet.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/project/muffet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/project/muffet;


# direct methods
.method constructor <init>(Lcom/example/project/muffet;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/project/muffet$1;->this$0:Lcom/example/project/muffet;

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
    iget-object v0, p0, Lcom/example/project/muffet$1;->this$0:Lcom/example/project/muffet;

    #getter for: Lcom/example/project/muffet;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/example/project/muffet;->access$0(Lcom/example/project/muffet;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 53
    iget-object v0, p0, Lcom/example/project/muffet$1;->this$0:Lcom/example/project/muffet;

    #getter for: Lcom/example/project/muffet;->myVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/example/project/muffet;->access$1(Lcom/example/project/muffet;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/example/project/muffet$1;->this$0:Lcom/example/project/muffet;

    #getter for: Lcom/example/project/muffet;->position:I
    invoke-static {v1}, Lcom/example/project/muffet;->access$2(Lcom/example/project/muffet;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 54
    iget-object v0, p0, Lcom/example/project/muffet$1;->this$0:Lcom/example/project/muffet;

    #getter for: Lcom/example/project/muffet;->position:I
    invoke-static {v0}, Lcom/example/project/muffet;->access$2(Lcom/example/project/muffet;)I

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/example/project/muffet$1;->this$0:Lcom/example/project/muffet;

    #getter for: Lcom/example/project/muffet;->myVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/example/project/muffet;->access$1(Lcom/example/project/muffet;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/example/project/muffet$1;->this$0:Lcom/example/project/muffet;

    #getter for: Lcom/example/project/muffet;->myVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/example/project/muffet;->access$1(Lcom/example/project/muffet;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0
.end method
