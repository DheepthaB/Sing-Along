.class final Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V
    .locals 0
    .parameter

    .prologue
    .line 1509
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1509
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV7;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .locals 6
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    const/4 v3, 0x1

    .line 1512
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/internal/view/menu/MenuBuilder;

    move-result-object v2

    .line 1513
    .local v2, parentMenu:Landroid/view/Menu;
    if-eq v2, p1, :cond_2

    move v0, v3

    .line 1514
    .local v0, isSubMenu:Z
    :goto_0
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    if-eqz v0, :cond_0

    move-object p1, v2

    .end local p1
    :cond_0
    #calls: Landroid/support/v7/app/AppCompatDelegateImplV7;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    invoke-static {v4, p1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$600(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;

    move-result-object v1

    .line 1515
    .local v1, panel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    if-eqz v1, :cond_1

    .line 1516
    if-eqz v0, :cond_3

    .line 1517
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget v5, v1, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;->featureId:I

    #calls: Landroid/support/v7/app/AppCompatDelegateImplV7;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V
    invoke-static {v4, v5, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$700(Landroid/support/v7/app/AppCompatDelegateImplV7;ILandroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Landroid/view/Menu;)V

    .line 1518
    iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    #calls: Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    invoke-static {v4, v1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$800(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    .line 1525
    :cond_1
    :goto_1
    return-void

    .line 1513
    .end local v0           #isSubMenu:Z
    .end local v1           #panel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1522
    .end local p1
    .restart local v0       #isSubMenu:Z
    .restart local v1       #panel:Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;
    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    #calls: Landroid/support/v7/app/AppCompatDelegateImplV7;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V
    invoke-static {v3, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV7;->access$800(Landroid/support/v7/app/AppCompatDelegateImplV7;Landroid/support/v7/app/AppCompatDelegateImplV7$PanelFeatureState;Z)V

    goto :goto_1
.end method

.method public onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .locals 2
    .parameter "subMenu"

    .prologue
    .line 1529
    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    iget-boolean v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV7;->mHasActionBar:Z

    if-eqz v1, :cond_0

    .line 1530
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1531
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV7$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV7;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplV7;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1532
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1535
    .end local v0           #cb:Landroid/view/Window$Callback;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
