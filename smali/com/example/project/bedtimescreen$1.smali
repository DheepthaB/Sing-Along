.class Lcom/example/project/bedtimescreen$1;
.super Ljava/lang/Object;
.source "bedtimescreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/project/bedtimescreen;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/example/project/bedtimescreen;


# direct methods
.method constructor <init>(Lcom/example/project/bedtimescreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/example/project/bedtimescreen$1;->this$0:Lcom/example/project/bedtimescreen;

    .line 36
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
    .line 41
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 42
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/bedtimescreen$1;->this$0:Lcom/example/project/bedtimescreen;

    const-class v2, Lcom/example/project/bye;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/bedtimescreen$1;->this$0:Lcom/example/project/bedtimescreen;

    invoke-virtual {v1, v0}, Lcom/example/project/bedtimescreen;->startActivity(Landroid/content/Intent;)V

    .line 62
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 46
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/bedtimescreen$1;->this$0:Lcom/example/project/bedtimescreen;

    const-class v2, Lcom/example/project/bed;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/bedtimescreen$1;->this$0:Lcom/example/project/bedtimescreen;

    invoke-virtual {v1, v0}, Lcom/example/project/bedtimescreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/bedtimescreen$1;->this$0:Lcom/example/project/bedtimescreen;

    const-class v2, Lcom/example/project/rock;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/bedtimescreen$1;->this$0:Lcom/example/project/bedtimescreen;

    invoke-virtual {v1, v0}, Lcom/example/project/bedtimescreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    .end local v0           #i:Landroid/content/Intent;
    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    .line 54
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/bedtimescreen$1;->this$0:Lcom/example/project/bedtimescreen;

    const-class v2, Lcom/example/project/star;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/bedtimescreen$1;->this$0:Lcom/example/project/bedtimescreen;

    invoke-virtual {v1, v0}, Lcom/example/project/bedtimescreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 57
    .end local v0           #i:Landroid/content/Intent;
    :cond_4
    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/project/bedtimescreen$1;->this$0:Lcom/example/project/bedtimescreen;

    const-class v2, Lcom/example/project/hush;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .restart local v0       #i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/example/project/bedtimescreen$1;->this$0:Lcom/example/project/bedtimescreen;

    invoke-virtual {v1, v0}, Lcom/example/project/bedtimescreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
