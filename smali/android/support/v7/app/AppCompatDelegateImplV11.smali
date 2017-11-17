.class Landroid/support/v7/app/AppCompatDelegateImplV11;
.super Landroid/support/v7/app/AppCompatDelegateImplV7;
.source "AppCompatDelegateImplV11.java"

# interfaces
.implements Landroid/support/v7/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 0
    .parameter "context"
    .parameter "window"
    .parameter "callback"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    .line 39
    return-void
.end method


# virtual methods
.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .parameter "parent"
    .parameter "name"
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV7;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 83
    .end local v0           #view:Landroid/view/View;
    :goto_0
    return-object v0

    .line 78
    .restart local v0       #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v1, Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    check-cast v1, Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onSubDecorInstalled(Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "subDecor"

    .prologue
    .line 44
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    .line 48
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Landroid/support/v7/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V

    .line 51
    :cond_0
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;

    invoke-direct {v2, v0, p2}, Landroid/support/v7/internal/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV11;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    .line 62
    .local v1, supportActionMode:Landroid/support/v7/view/ActionMode;
    if-eqz v1, :cond_0

    .line 64
    new-instance v2, Landroid/support/v7/internal/view/SupportActionModeWrapper;

    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/support/v7/internal/view/SupportActionModeWrapper;-><init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode;)V

    .line 66
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
