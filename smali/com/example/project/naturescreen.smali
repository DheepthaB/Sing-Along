.class public Lcom/example/project/naturescreen;
.super Landroid/app/Activity;
.source "naturescreen.java"


# instance fields
.field imageId:[Ljava/lang/Integer;

.field list:Landroid/widget/ListView;

.field web:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 13
    const-string v1, "I Had A Little Nut Tree"

    aput-object v1, v0, v3

    .line 14
    const-string v1, "The Mulberry Bush"

    aput-object v1, v0, v4

    .line 15
    const-string v1, "Roses Are Red"

    aput-object v1, v0, v5

    .line 16
    const-string v1, "Round And Round The Garden"

    aput-object v1, v0, v6

    .line 17
    const-string v1, "Mary, Mary,Quite Contrary "

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 18
    const-string v2, "Ring A Ring O\'Roses"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/example/project/naturescreen;->web:[Ljava/lang/String;

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Integer;

    .line 21
    const v1, 0x7f02005d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 22
    const v1, 0x7f020044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 23
    const v1, 0x7f020064

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 24
    const v1, 0x7f02004e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 25
    const v1, 0x7f020057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 26
    const v2, 0x7f020062

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/example/project/naturescreen;->imageId:[Ljava/lang/Integer;

    .line 10
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030033

    invoke-virtual {p0, v1}, Lcom/example/project/naturescreen;->setContentView(I)V

    .line 35
    new-instance v0, Lcom/example/project/customlist;

    iget-object v1, p0, Lcom/example/project/naturescreen;->web:[Ljava/lang/String;

    iget-object v2, p0, Lcom/example/project/naturescreen;->imageId:[Ljava/lang/Integer;

    .line 34
    invoke-direct {v0, p0, v1, v2}, Lcom/example/project/customlist;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 36
    .local v0, adapter:Lcom/example/project/customlist;
    const v1, 0x7f060056

    invoke-virtual {p0, v1}, Lcom/example/project/naturescreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/example/project/naturescreen;->list:Landroid/widget/ListView;

    .line 37
    iget-object v1, p0, Lcom/example/project/naturescreen;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    iget-object v1, p0, Lcom/example/project/naturescreen;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/example/project/naturescreen$1;

    invoke-direct {v2, p0}, Lcom/example/project/naturescreen$1;-><init>(Lcom/example/project/naturescreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    return-void
.end method
