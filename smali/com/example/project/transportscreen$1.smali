.class Lcom/example/project/transportscreen$1;
.super Ljava/lang/Object;
.source "transportscreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/project/transportscreen;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/example/project/transportscreen;


# direct methods
.method constructor <init>(Lcom/example/project/transportscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/project/transportscreen$1;->this$0:Lcom/example/project/transportscreen;

    .line 32
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
    .line 37
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 38
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/transportscreen$1;->this$0:Lcom/example/project/transportscreen;

    const-class v2, Lcom/example/project/london;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/transportscreen$1;->this$0:Lcom/example/project/transportscreen;

    invoke-virtual {v1, v0}, Lcom/example/project/transportscreen;->startActivity(Landroid/content/Intent;)V

    .line 50
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 42
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/transportscreen$1;->this$0:Lcom/example/project/transportscreen;

    const-class v2, Lcom/example/project/boat;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/transportscreen$1;->this$0:Lcom/example/project/transportscreen;

    invoke-virtual {v1, v0}, Lcom/example/project/transportscreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/transportscreen$1;->this$0:Lcom/example/project/transportscreen;

    const-class v2, Lcom/example/project/bus;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/transportscreen$1;->this$0:Lcom/example/project/transportscreen;

    invoke-virtual {v1, v0}, Lcom/example/project/transportscreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
