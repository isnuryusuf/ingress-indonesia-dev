.class final Landroid/support/v4/view/an;
.super Landroid/support/v4/view/am;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/support/v4/view/am;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    invoke-virtual {p1}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 198
    return-void
.end method

.method public final c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    return v0
.end method

.method public final d(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 218
    return-void
.end method
