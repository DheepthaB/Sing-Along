.class Lcom/example/project/naturescreen$1;
.super Ljava/lang/Object;
.source "naturescreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/project/naturescreen;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/example/project/naturescreen;


# direct methods
.method constructor <init>(Lcom/example/project/naturescreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    .line 38
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
    .line 43
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 44
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    const-class v2, Lcom/example/project/nuttree;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    invoke-virtual {v1, v0}, Lcom/example/project/naturescreen;->startActivity(Landroid/content/Intent;)V

    .line 67
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 48
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    const-class v2, Lcom/example/project/mulberry;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    invoke-virtual {v1, v0}, Lcom/example/project/naturescreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    const-class v2, Lcom/example/project/roses;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    invoke-virtual {v1, v0}, Lcom/example/project/naturescreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    .end local v0           #i:Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    .line 56
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    const-class v2, Lcom/example/project/garden;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    invoke-virtual {v1, v0}, Lcom/example/project/naturescreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 59
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    const/4 v1, 0x4

    if-ne p3, v1, :cond_5

    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    const-class v2, Lcom/example/project/mary;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    invoke-virtual {v1, v0}, Lcom/example/project/naturescreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 63
    .end local v0           #i:Landroid/content/Intent;
    :cond_5
    const/4 v1, 0x5

    if-ne p3, v1, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    const-class v2, Lcom/example/project/ring;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/naturescreen$1;->this$0:Lcom/example/project/naturescreen;

    invoke-virtual {v1, v0}, Lcom/example/project/naturescreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
