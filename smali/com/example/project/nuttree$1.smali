.class Lcom/example/project/nuttree$1;
.super Ljava/lang/Object;
.source "nuttree.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/project/nuttree;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/project/nuttree;


# direct methods
.method constructor <init>(Lcom/example/project/nuttree;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/project/nuttree$1;->this$0:Lcom/example/project/nuttree;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mediaPlayer"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/example/project/nuttree$1;->this$0:Lcom/example/project/nuttree;

    #getter for: Lcom/example/project/nuttree;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/example/project/nuttree;->access$0(Lcom/example/project/nuttree;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 56
    iget-object v0, p0, Lcom/example/project/nuttree$1;->this$0:Lcom/example/project/nuttree;

    #getter for: Lcom/example/project/nuttree;->myVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/example/project/nuttree;->access$1(Lcom/example/project/nuttree;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/example/project/nuttree$1;->this$0:Lcom/example/project/nuttree;

    #getter for: Lcom/example/project/nuttree;->position:I
    invoke-static {v1}, Lcom/example/project/nuttree;->access$2(Lcom/example/project/nuttree;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 57
    iget-object v0, p0, Lcom/example/project/nuttree$1;->this$0:Lcom/example/project/nuttree;

    #getter for: Lcom/example/project/nuttree;->position:I
    invoke-static {v0}, Lcom/example/project/nuttree;->access$2(Lcom/example/project/nuttree;)I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/example/project/nuttree$1;->this$0:Lcom/example/project/nuttree;

    #getter for: Lcom/example/project/nuttree;->myVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/example/project/nuttree;->access$1(Lcom/example/project/nuttree;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/example/project/nuttree$1;->this$0:Lcom/example/project/nuttree;

    #getter for: Lcom/example/project/nuttree;->myVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/example/project/nuttree;->access$1(Lcom/example/project/nuttree;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0
.end method
