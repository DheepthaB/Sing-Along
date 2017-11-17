.class Lcom/example/project/monkey$1;
.super Ljava/lang/Object;
.source "monkey.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/project/monkey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/project/monkey;


# direct methods
.method constructor <init>(Lcom/example/project/monkey;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/project/monkey$1;->this$0:Lcom/example/project/monkey;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 78
    iget-object v0, p0, Lcom/example/project/monkey$1;->this$0:Lcom/example/project/monkey;

    iget-object v1, p0, Lcom/example/project/monkey$1;->this$0:Lcom/example/project/monkey;

    #getter for: Lcom/example/project/monkey;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/example/project/monkey;->access$0(Lcom/example/project/monkey;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-double v1, v1

    #setter for: Lcom/example/project/monkey;->startTime:D
    invoke-static {v0, v1, v2}, Lcom/example/project/monkey;->access$1(Lcom/example/project/monkey;D)V

    .line 79
    iget-object v0, p0, Lcom/example/project/monkey$1;->this$0:Lcom/example/project/monkey;

    iget-object v0, v0, Lcom/example/project/monkey;->startTimeField:Landroid/widget/TextView;

    const-string v1, "%d min, %d sec"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 80
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/example/project/monkey$1;->this$0:Lcom/example/project/monkey;

    #getter for: Lcom/example/project/monkey;->startTime:D
    invoke-static {v5}, Lcom/example/project/monkey;->access$2(Lcom/example/project/monkey;)D

    move-result-wide v5

    double-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 81
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/example/project/monkey$1;->this$0:Lcom/example/project/monkey;

    #getter for: Lcom/example/project/monkey;->startTime:D
    invoke-static {v5}, Lcom/example/project/monkey;->access$2(Lcom/example/project/monkey;)D

    move-result-wide v5

    double-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 82
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 83
    iget-object v8, p0, Lcom/example/project/monkey$1;->this$0:Lcom/example/project/monkey;

    #getter for: Lcom/example/project/monkey;->startTime:D
    invoke-static {v8}, Lcom/example/project/monkey;->access$2(Lcom/example/project/monkey;)D

    move-result-wide v8

    double-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v7

    .line 82
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    .line 81
    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 79
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/example/project/monkey$1;->this$0:Lcom/example/project/monkey;

    #getter for: Lcom/example/project/monkey;->seekbar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/example/project/monkey;->access$3(Lcom/example/project/monkey;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/example/project/monkey$1;->this$0:Lcom/example/project/monkey;

    #getter for: Lcom/example/project/monkey;->startTime:D
    invoke-static {v1}, Lcom/example/project/monkey;->access$2(Lcom/example/project/monkey;)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 86
    iget-object v0, p0, Lcom/example/project/monkey$1;->this$0:Lcom/example/project/monkey;

    #getter for: Lcom/example/project/monkey;->myHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/example/project/monkey;->access$4(Lcom/example/project/monkey;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    return-void
.end method
