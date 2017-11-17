.class public Lcom/example/project/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/project/MainActivity$CustomAdapter;
    }
.end annotation


# instance fields
.field grid:Landroid/widget/GridView;

.field imageId:[I

.field web:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    const-string v2, "Nature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 19
    const-string v2, "Animals"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    const-string v2, "Body Parts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 21
    const-string v2, "Transport"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 22
    const-string v2, "Bed Time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 23
    const-string v2, "Alphabets And Numbers"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/example/project/MainActivity;->web:[Ljava/lang/String;

    .line 26
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 32
    iput-object v0, p0, Lcom/example/project/MainActivity;->imageId:[I

    .line 15
    return-void

    .line 26
    :array_0
    .array-data 0x4
        0x5ct 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
        0x42t 0x0t 0x2t 0x7ft
        0x6ct 0x0t 0x2t 0x7ft
        0x40t 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/example/project/MainActivity;->setContentView(I)V

    .line 41
    new-instance v0, Lcom/example/project/MainActivity$CustomAdapter;

    iget-object v1, p0, Lcom/example/project/MainActivity;->web:[Ljava/lang/String;

    iget-object v2, p0, Lcom/example/project/MainActivity;->imageId:[I

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/example/project/MainActivity$CustomAdapter;-><init>(Lcom/example/project/MainActivity;Landroid/content/Context;[Ljava/lang/String;[I)V

    .line 42
    .local v0, adapter:Lcom/example/project/MainActivity$CustomAdapter;
    const v1, 0x7f060067

    invoke-virtual {p0, v1}, Lcom/example/project/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/example/project/MainActivity;->grid:Landroid/widget/GridView;

    .line 43
    iget-object v1, p0, Lcom/example/project/MainActivity;->grid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object v1, p0, Lcom/example/project/MainActivity;->grid:Landroid/widget/GridView;

    new-instance v2, Lcom/example/project/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/example/project/MainActivity$1;-><init>(Lcom/example/project/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    return-void
.end method
