.class public final Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
.super Ljava/lang/Object;
.source "PlaybackStateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActions:J

.field private mBufferedPosition:J

.field private mErrorMessage:Ljava/lang/CharSequence;

.field private mPosition:J

.field private mRate:F

.field private mState:I

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    #getter for: Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$300(Landroid/support/v4/media/session/PlaybackStateCompat;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    .line 604
    #getter for: Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$400(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    .line 605
    #getter for: Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$500(Landroid/support/v4/media/session/PlaybackStateCompat;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    .line 606
    #getter for: Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$600(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    .line 607
    #getter for: Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$700(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    .line 608
    #getter for: Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$800(Landroid/support/v4/media/session/PlaybackStateCompat;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    .line 609
    #getter for: Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->access$900(Landroid/support/v4/media/session/PlaybackStateCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    .line 610
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 13

    .prologue
    .line 730
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    iget-wide v4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    iget v6, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    iget-wide v7, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    iget-object v9, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    iget-wide v10, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJLjava/lang/CharSequence;JLandroid/support/v4/media/session/PlaybackStateCompat$1;)V

    return-object v0
.end method

.method public setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0
    .parameter "capabilities"

    .prologue
    .line 711
    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mActions:J

    .line 712
    return-object p0
.end method

.method public setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0
    .parameter "bufferPosition"

    .prologue
    .line 689
    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mBufferedPosition:J

    .line 690
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/CharSequence;)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 722
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    .line 723
    return-object p0
.end method

.method public setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 7
    .parameter "state"
    .parameter "position"
    .parameter "playbackSpeed"

    .prologue
    .line 640
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;
    .locals 0
    .parameter "state"
    .parameter "position"
    .parameter "playbackSpeed"
    .parameter "updateTime"

    .prologue
    .line 674
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mState:I

    .line 675
    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mPosition:J

    .line 676
    iput-wide p5, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mUpdateTime:J

    .line 677
    iput p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->mRate:F

    .line 678
    return-object p0
.end method
