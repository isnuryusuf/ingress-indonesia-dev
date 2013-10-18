.class public final Lcom/nianticproject/ingress/common/ui/widget/an;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

.field private b:F

.field private c:F


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    .line 56
    iput p2, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->b:F

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->c:F

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;FB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/ui/widget/an;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;F)V

    return-void
.end method


# virtual methods
.method final a(F)V
    .locals 4
    .parameter

    .prologue
    .line 96
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->c:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->c:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;)F

    move-result v2

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->b:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;F)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->c:F

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    iget v1, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->c:F

    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;)F

    move-result v2

    iget v3, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->b:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;F)V

    goto :goto_0
.end method

.method public final a(FZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "Progress must be between 0.0 and 1.0"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 70
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->c:F

    .line 71
    if-nez p2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/an;->a:Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;

    invoke-static {v0, p1}, Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;->a(Lcom/nianticproject/ingress/common/ui/widget/ProgressBar;F)V

    .line 74
    :cond_0
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
