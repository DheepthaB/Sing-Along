.class public Lcom/example/project/nuttree;
.super Landroid/app/Activity;
.source "nuttree.java"


# instance fields
.field private mediaControls:Landroid/widget/MediaController;

.field private myVideoView:Landroid/widget/VideoView;

.field private position:I

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/example/project/nuttree;->position:I

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/example/project/nuttree;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/example/project/nuttree;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/project/nuttree;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/example/project/nuttree;->myVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/example/project/nuttree;)I
    .locals 1
    .parameter

    .prologue
    .line 17
    iget v0, p0, Lcom/example/project/nuttree;->position:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v1, 0x7f030034

    invoke-virtual {p0, v1}, Lcom/example/project/nuttree;->setContentView(I)V

    .line 27
    iget-object v1, p0, Lcom/example/project/nuttree;->mediaControls:Landroid/widget/MediaController;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/example/project/nuttree;->mediaControls:Landroid/widget/MediaController;

    .line 31
    :cond_0
    const v1, 0x7f06006c

    invoke-virtual {p0, v1}, Lcom/example/project/nuttree;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/example/project/nuttree;->myVideoView:Landroid/widget/VideoView;

    .line 32
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/example/project/nuttree;->progressDialog:Landroid/app/ProgressDialog;

    .line 33
    iget-object v1, p0, Lcom/example/project/nuttree;->progressDialog:Landroid/app/ProgressDialog;

    const-string v2, "I Had A Little Nut Tree"

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, p0, Lcom/example/project/nuttree;->progressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Loading..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v1, p0, Lcom/example/project/nuttree;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 36
    iget-object v1, p0, Lcom/example/project/nuttree;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/example/project/nuttree;->myVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/example/project/nuttree;->mediaControls:Landroid/widget/MediaController;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/example/project/nuttree;->myVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 50
    iget-object v1, p0, Lcom/example/project/nuttree;->myVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/example/project/nuttree$1;

    invoke-direct {v2, p0}, Lcom/example/project/nuttree$1;-><init>(Lcom/example/project/nuttree;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 66
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Error"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 81
    const-string v0, "Position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/example/project/nuttree;->position:I

    .line 82
    iget-object v0, p0, Lcom/example/project/nuttree;->myVideoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/example/project/nuttree;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 83
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 72
    const-string v0, "Position"

    iget-object v1, p0, Lcom/example/project/nuttree;->myVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lcom/example/project/nuttree;->myVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 74
    return-void
.end method
