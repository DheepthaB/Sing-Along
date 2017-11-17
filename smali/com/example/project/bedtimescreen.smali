.class public Lcom/example/project/bedtimescreen;
.super Landroid/app/Activity;
.source "bedtimescreen.java"


# instance fields
.field imageId:[Ljava/lang/Integer;

.field list:Landroid/widget/ListView;

.field web:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 13
    const-string v1, "Bye Baby Bunting"

    aput-object v1, v0, v2

    .line 14
    const-string v1, "Early To Bed"

    aput-object v1, v0, v3

    .line 15
    const-string v1, "Rock-A-Bye Baby"

    aput-object v1, v0, v4

    .line 16
    const-string v1, "Twinkle Twinkle Little Star"

    aput-object v1, v0, v5

    .line 17
    const-string v1, "Hush Little Baby"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/example/project/bedtimescreen;->web:[Ljava/lang/String;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    .line 20
    const v1, 0x7f020045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 21
    const v1, 0x7f02004d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 22
    const v1, 0x7f020063

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 23
    const v1, 0x7f02006a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 24
    const v1, 0x7f020053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/example/project/bedtimescreen;->imageId:[Ljava/lang/Integer;

    .line 10
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/example/project/bedtimescreen;->setContentView(I)V

    .line 33
    new-instance v0, Lcom/example/project/customlist;

    iget-object v1, p0, Lcom/example/project/bedtimescreen;->web:[Ljava/lang/String;

    iget-object v2, p0, Lcom/example/project/bedtimescreen;->imageId:[Ljava/lang/Integer;

    .line 32
    invoke-direct {v0, p0, v1, v2}, Lcom/example/project/customlist;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 34
    .local v0, adapter:Lcom/example/project/customlist;
    const v1, 0x7f060056

    invoke-virtual {p0, v1}, Lcom/example/project/bedtimescreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/example/project/bedtimescreen;->list:Landroid/widget/ListView;

    .line 35
    iget-object v1, p0, Lcom/example/project/bedtimescreen;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    iget-object v1, p0, Lcom/example/project/bedtimescreen;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/example/project/bedtimescreen$1;

    invoke-direct {v2, p0}, Lcom/example/project/bedtimescreen$1;-><init>(Lcom/example/project/bedtimescreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    return-void
.end method
