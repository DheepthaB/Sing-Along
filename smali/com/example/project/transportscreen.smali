.class public Lcom/example/project/transportscreen;
.super Landroid/app/Activity;
.source "transportscreen.java"


# instance fields
.field imageId:[Ljava/lang/Integer;

.field list:Landroid/widget/ListView;

.field web:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    new-array v0, v5, [Ljava/lang/String;

    .line 13
    const-string v1, "London Bridge Is Falling Down"

    aput-object v1, v0, v2

    .line 14
    const-string v1, "RowRowRow Your Boat"

    aput-object v1, v0, v3

    .line 15
    const-string v1, "The Wheels On The Bus"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/example/project/transportscreen;->web:[Ljava/lang/String;

    .line 17
    new-array v0, v5, [Ljava/lang/Integer;

    .line 18
    const v1, 0x7f020055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 19
    const v1, 0x7f020066

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 20
    const v1, 0x7f02006d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/example/project/transportscreen;->imageId:[Ljava/lang/Integer;

    .line 10
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/example/project/transportscreen;->setContentView(I)V

    .line 29
    new-instance v0, Lcom/example/project/customlist;

    iget-object v1, p0, Lcom/example/project/transportscreen;->web:[Ljava/lang/String;

    iget-object v2, p0, Lcom/example/project/transportscreen;->imageId:[Ljava/lang/Integer;

    .line 28
    invoke-direct {v0, p0, v1, v2}, Lcom/example/project/customlist;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 30
    .local v0, adapter:Lcom/example/project/customlist;
    const v1, 0x7f060056

    invoke-virtual {p0, v1}, Lcom/example/project/transportscreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/example/project/transportscreen;->list:Landroid/widget/ListView;

    .line 31
    iget-object v1, p0, Lcom/example/project/transportscreen;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    iget-object v1, p0, Lcom/example/project/transportscreen;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/example/project/transportscreen$1;

    invoke-direct {v2, p0}, Lcom/example/project/transportscreen$1;-><init>(Lcom/example/project/transportscreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    return-void
.end method
