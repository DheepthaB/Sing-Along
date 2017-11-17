.class public Lcom/example/project/customlist;
.super Landroid/widget/ArrayAdapter;
.source "customlist.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field private final imageId:[Ljava/lang/Integer;

.field private final web:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 1
    .parameter "context"
    .parameter "web"
    .parameter "imageId"

    .prologue
    .line 18
    const v0, 0x7f030026

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 19
    iput-object p1, p0, Lcom/example/project/customlist;->context:Landroid/app/Activity;

    .line 20
    iput-object p2, p0, Lcom/example/project/customlist;->web:[Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/example/project/customlist;->imageId:[Ljava/lang/Integer;

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "view"
    .parameter "parent"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder",
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v4, p0, Lcom/example/project/customlist;->context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 27
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030026

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 28
    .local v2, rowView:Landroid/view/View;
    const v4, 0x7f060060

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 30
    .local v3, txtTitle:Landroid/widget/TextView;
    const v4, 0x7f06005f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/example/project/customlist;->web:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v4, p0, Lcom/example/project/customlist;->imageId:[Ljava/lang/Integer;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    return-object v2
.end method
