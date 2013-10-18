.class public Lcom/nianticproject/ingress/ui/CollapsibleLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/ui/j;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    new-instance v0, Lcom/nianticproject/ingress/ui/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/ui/j;-><init>(Lcom/nianticproject/ingress/ui/CollapsibleLayout;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a:Lcom/nianticproject/ingress/ui/j;

    .line 96
    iput v2, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->d:F

    .line 97
    iput v2, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    .line 98
    iput v2, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->f:F

    .line 134
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b:F

    .line 135
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->c:F

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    new-instance v0, Lcom/nianticproject/ingress/ui/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/ui/j;-><init>(Lcom/nianticproject/ingress/ui/CollapsibleLayout;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a:Lcom/nianticproject/ingress/ui/j;

    .line 96
    iput v2, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->d:F

    .line 97
    iput v2, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    .line 98
    iput v2, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->f:F

    .line 134
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b:F

    .line 135
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->c:F

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    new-instance v0, Lcom/nianticproject/ingress/ui/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nianticproject/ingress/ui/j;-><init>(Lcom/nianticproject/ingress/ui/CollapsibleLayout;B)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a:Lcom/nianticproject/ingress/ui/j;

    .line 96
    iput v2, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->d:F

    .line 97
    iput v2, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    .line 98
    iput v2, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->f:F

    .line 134
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b:F

    .line 135
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->c:F

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->c:F

    return v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ui/CollapsibleLayout;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b:F

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b:F

    return v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    iput p1, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b:F

    return p1
.end method

.method static synthetic c(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->f:F

    return v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/ui/CollapsibleLayout;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b:F

    return v0
.end method

.method protected static c()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method static synthetic d(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->d:F

    return v0
.end method

.method static synthetic e(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F
    .locals 1
    .parameter

    .prologue
    .line 14
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    return v0
.end method

.method protected static f()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 161
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->d:F

    .line 162
    return-void
.end method

.method public final a(F)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput p1, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    .line 170
    return-void
.end method

.method public final a(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->d:F

    :goto_0
    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->c:F

    .line 183
    if-eqz p2, :cond_2

    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a:Lcom/nianticproject/ingress/ui/j;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/j;->a()V

    .line 197
    :cond_0
    :goto_1
    return-void

    .line 181
    :cond_1
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e:F

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a:Lcom/nianticproject/ingress/ui/j;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 187
    iget v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->c:F

    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b:F

    .line 188
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->requestLayout()V

    .line 191
    if-nez p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e()V

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 165
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->f:F

    .line 166
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->g:Z

    .line 210
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->g:Z

    .line 217
    return-void
.end method

.method protected final g()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->g:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 157
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->setMeasuredDimension(II)V

    .line 158
    return-void
.end method
