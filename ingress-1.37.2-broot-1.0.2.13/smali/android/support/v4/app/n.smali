.class final Landroid/support/v4/app/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Landroid/support/v4/app/k;


# direct methods
.method constructor <init>(Landroid/support/v4/app/k;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Landroid/support/v4/app/n;->b:Landroid/support/v4/app/k;

    iput-object p2, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 984
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->k:Landroid/view/View;

    .line 986
    iget-object v0, p0, Landroid/support/v4/app/n;->b:Landroid/support/v4/app/k;

    iget-object v1, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/n;->a:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->l:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 989
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 992
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 995
    return-void
.end method
