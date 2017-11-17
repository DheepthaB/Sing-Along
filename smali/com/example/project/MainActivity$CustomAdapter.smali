.class Lcom/example/project/MainActivity$CustomAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/project/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomAdapter"
.end annotation


# instance fields
.field private final Imageid:[I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/example/project/MainActivity;

.field private final web:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/example/project/MainActivity;Landroid/content/Context;[Ljava/lang/String;[I)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "web"
    .parameter "Imageid"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/example/project/MainActivity$CustomAdapter;->this$0:Lcom/example/project/MainActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/example/project/MainActivity$CustomAdapter;->mContext:Landroid/content/Context;

    .line 88
    iput-object p4, p0, Lcom/example/project/MainActivity$CustomAdapter;->Imageid:[I

    .line 89
    iput-object p3, p0, Lcom/example/project/MainActivity$CustomAdapter;->web:[Ljava/lang/String;

    .line 90
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/example/project/MainActivity$CustomAdapter;->web:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 104
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 111
    if-nez p2, :cond_0

    .line 112
    iget-object v4, p0, Lcom/example/project/MainActivity$CustomAdapter;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 113
    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v0, Landroid/view/View;

    iget-object v4, p0, Lcom/example/project/MainActivity$CustomAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    .local v0, grid:Landroid/view/View;
    const v4, 0x7f030025

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    :goto_0
    const v4, 0x7f06005e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 120
    .local v3, textView:Landroid/widget/TextView;
    const v4, 0x7f060028

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 121
    .local v1, imageView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/example/project/MainActivity$CustomAdapter;->web:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v4, p0, Lcom/example/project/MainActivity$CustomAdapter;->Imageid:[I

    aget v4, v4, p1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    return-object v0

    .line 117
    .end local v0           #grid:Landroid/view/View;
    .end local v1           #imageView:Landroid/widget/ImageView;
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .restart local v0       #grid:Landroid/view/View;
    goto :goto_0
.end method
