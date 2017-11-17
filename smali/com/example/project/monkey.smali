.class public Lcom/example/project/monkey;
.super Landroid/app/Activity;
.source "monkey.java"


# static fields
.field public static oneTimeOnly:I


# instance fields
.field private UpdateSongTime:Ljava/lang/Runnable;

.field private backwardTime:I

.field public endTimeField:Landroid/widget/TextView;

.field private finalTime:D

.field private forwardTime:I

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private myHandler:Landroid/os/Handler;

.field private pauseButton:Landroid/widget/ImageButton;

.field private playButton:Landroid/widget/ImageButton;

.field private seekbar:Landroid/widget/SeekBar;

.field public songName:Landroid/widget/TextView;

.field private startTime:D

.field public startTimeField:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/example/project/monkey;->oneTimeOnly:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x1388

    const-wide/16 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput-wide v0, p0, Lcom/example/project/monkey;->startTime:D

    .line 23
    iput-wide v0, p0, Lcom/example/project/monkey;->finalTime:D

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/example/project/monkey;->myHandler:Landroid/os/Handler;

    .line 25
    iput v2, p0, Lcom/example/project/monkey;->forwardTime:I

    .line 26
    iput v2, p0, Lcom/example/project/monkey;->backwardTime:I

    .line 76
    new-instance v0, Lcom/example/project/monkey$1;

    invoke-direct {v0, p0}, Lcom/example/project/monkey$1;-><init>(Lcom/example/project/monkey;)V

    iput-object v0, p0, Lcom/example/project/monkey;->UpdateSongTime:Ljava/lang/Runnable;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/example/project/monkey;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/example/project/monkey;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/project/monkey;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/example/project/monkey;->startTime:D

    return-void
.end method

.method static synthetic access$2(Lcom/example/project/monkey;)D
    .locals 2
    .parameter

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/example/project/monkey;->startTime:D

    return-wide v0
.end method

.method static synthetic access$3(Lcom/example/project/monkey;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/example/project/monkey;->seekbar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/example/project/monkey;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/example/project/monkey;->myHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public forward(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 98
    iget-wide v1, p0, Lcom/example/project/monkey;->startTime:D

    double-to-int v0, v1

    .line 99
    .local v0, temp:I
    iget v1, p0, Lcom/example/project/monkey;->forwardTime:I

    add-int/2addr v1, v0

    int-to-double v1, v1

    iget-wide v3, p0, Lcom/example/project/monkey;->finalTime:D

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    .line 100
    iget-wide v1, p0, Lcom/example/project/monkey;->startTime:D

    iget v3, p0, Lcom/example/project/monkey;->forwardTime:I

    int-to-double v3, v3

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/example/project/monkey;->startTime:D

    .line 101
    iget-object v1, p0, Lcom/example/project/monkey;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-wide v2, p0, Lcom/example/project/monkey;->startTime:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/example/project/monkey;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 105
    const-string v2, "Cannot jump forward 5 seconds"

    .line 106
    const/4 v3, 0x0

    .line 104
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/example/project/monkey;->setContentView(I)V

    .line 34
    const v0, 0x7f060044

    invoke-virtual {p0, v0}, Lcom/example/project/monkey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/project/monkey;->songName:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f060041

    invoke-virtual {p0, v0}, Lcom/example/project/monkey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/project/monkey;->startTimeField:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f060040

    invoke-virtual {p0, v0}, Lcom/example/project/monkey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/project/monkey;->endTimeField:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f06003f

    invoke-virtual {p0, v0}, Lcom/example/project/monkey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/example/project/monkey;->seekbar:Landroid/widget/SeekBar;

    .line 38
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/example/project/monkey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/example/project/monkey;->playButton:Landroid/widget/ImageButton;

    .line 39
    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/example/project/monkey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/example/project/monkey;->pauseButton:Landroid/widget/ImageButton;

    .line 40
    iget-object v0, p0, Lcom/example/project/monkey;->songName:Landroid/widget/TextView;

    const-string v1, "5 Little Monkeys.mp3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f050001

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/example/project/monkey;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 42
    iget-object v0, p0, Lcom/example/project/monkey;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 43
    iget-object v0, p0, Lcom/example/project/monkey;->pauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/example/project/monkey;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public pause(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/example/project/monkey;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Pausing sound"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object v0, p0, Lcom/example/project/monkey;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 94
    iget-object v0, p0, Lcom/example/project/monkey;->pauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/example/project/monkey;->playButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 96
    return-void
.end method

.method public play(Landroid/view/View;)V
    .locals 12
    .parameter "view"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/example/project/monkey;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Playing sound"

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    iget-object v0, p0, Lcom/example/project/monkey;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 51
    iget-object v0, p0, Lcom/example/project/monkey;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/example/project/monkey;->finalTime:D

    .line 52
    iget-object v0, p0, Lcom/example/project/monkey;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/example/project/monkey;->startTime:D

    .line 53
    sget v0, Lcom/example/project/monkey;->oneTimeOnly:I

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/example/project/monkey;->seekbar:Landroid/widget/SeekBar;

    iget-wide v1, p0, Lcom/example/project/monkey;->finalTime:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 55
    sput v10, Lcom/example/project/monkey;->oneTimeOnly:I

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/example/project/monkey;->endTimeField:Landroid/widget/TextView;

    const-string v1, "%d min, %d sec"

    new-array v2, v11, [Ljava/lang/Object;

    .line 59
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/example/project/monkey;->finalTime:D

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    .line 60
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/example/project/monkey;->finalTime:D

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 61
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    iget-wide v7, p0, Lcom/example/project/monkey;->finalTime:D

    double-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    .line 61
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    .line 60
    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    .line 58
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/example/project/monkey;->startTimeField:Landroid/widget/TextView;

    const-string v1, "%d min, %d sec"

    new-array v2, v11, [Ljava/lang/Object;

    .line 65
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/example/project/monkey;->startTime:D

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    .line 66
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/example/project/monkey;->startTime:D

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 67
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    iget-wide v7, p0, Lcom/example/project/monkey;->startTime:D

    double-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    .line 67
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    .line 66
    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v10

    .line 64
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/example/project/monkey;->seekbar:Landroid/widget/SeekBar;

    iget-wide v1, p0, Lcom/example/project/monkey;->startTime:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 71
    iget-object v0, p0, Lcom/example/project/monkey;->myHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/example/project/monkey;->UpdateSongTime:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    iget-object v0, p0, Lcom/example/project/monkey;->pauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/example/project/monkey;->playButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 74
    return-void
.end method

.method public rewind(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 111
    iget-wide v1, p0, Lcom/example/project/monkey;->startTime:D

    double-to-int v0, v1

    .line 112
    .local v0, temp:I
    iget v1, p0, Lcom/example/project/monkey;->backwardTime:I

    sub-int v1, v0, v1

    if-lez v1, :cond_0

    .line 113
    iget-wide v1, p0, Lcom/example/project/monkey;->startTime:D

    iget v3, p0, Lcom/example/project/monkey;->backwardTime:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcom/example/project/monkey;->startTime:D

    .line 114
    iget-object v1, p0, Lcom/example/project/monkey;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-wide v2, p0, Lcom/example/project/monkey;->startTime:D

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/example/project/monkey;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 118
    const-string v2, "Cannot jump backward 5 seconds"

    .line 119
    const/4 v3, 0x0

    .line 117
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 119
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
