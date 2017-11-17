.class public Lcom/example/project/bed;
.super Landroid/app/Activity;
.source "bed.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/example/project/bed;->setContentView(I)V

    .line 12
    return-void
.end method
