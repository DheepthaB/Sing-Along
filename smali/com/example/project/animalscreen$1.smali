.class Lcom/example/project/animalscreen$1;
.super Ljava/lang/Object;
.source "animalscreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/project/animalscreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/project/animalscreen;


# direct methods
.method constructor <init>(Lcom/example/project/animalscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 45
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    const-class v2, Lcom/example/project/ducks;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    invoke-virtual {v1, v0}, Lcom/example/project/animalscreen;->startActivity(Landroid/content/Intent;)V

    .line 68
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 49
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    const-class v2, Lcom/example/project/mcd;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    invoke-virtual {v1, v0}, Lcom/example/project/animalscreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 52
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 53
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    const-class v2, Lcom/example/project/sheep;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    invoke-virtual {v1, v0}, Lcom/example/project/animalscreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    .end local v0           #i:Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    .line 57
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    const-class v2, Lcom/example/project/muffet;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    invoke-virtual {v1, v0}, Lcom/example/project/animalscreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    const/4 v1, 0x4

    if-ne p3, v1, :cond_5

    .line 61
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    const-class v2, Lcom/example/project/hickery;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    invoke-virtual {v1, v0}, Lcom/example/project/animalscreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    .end local v0           #i:Landroid/content/Intent;
    :cond_5
    const/4 v1, 0x5

    if-ne p3, v1, :cond_0

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    const-class v2, Lcom/example/project/pussy;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/animalscreen$1;->this$0:Lcom/example/project/animalscreen;

    invoke-virtual {v1, v0}, Lcom/example/project/animalscreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
