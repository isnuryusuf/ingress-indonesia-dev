.class public Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f020076

    const v4, 0x7f020075

    const/16 v3, 0x7d0

    const/16 v2, 0x3e8

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    iput v4, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->a:I

    .line 36
    iput v5, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->b:I

    .line 37
    iput v2, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->c:I

    .line 38
    iput v3, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->d:I

    .line 39
    const-string/jumbo v0, "clockwise"

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->e:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "conterclockwise"

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->f:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->d()V

    .line 52
    if-eqz p2, :cond_0

    .line 53
    sget-object v0, Lcom/nianticproject/ingress/dr;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 55
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->a:I

    .line 58
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->b:I

    .line 61
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->c:I

    .line 64
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->d:I

    .line 67
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->e:Ljava/lang/String;

    .line 71
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    iput-object v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->f:Ljava/lang/String;

    .line 75
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    :cond_0
    return-void

    .line 69
    :cond_1
    const-string/jumbo v0, "clockwise"

    goto :goto_0

    .line 73
    :cond_2
    const-string/jumbo v0, "conterclockwise"

    goto :goto_1
.end method

.method private static a(IZ)Landroid/view/animation/Animation;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x167

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f00

    .line 172
    if-eqz p1, :cond_0

    move v5, v1

    .line 173
    :goto_0
    if-eqz p1, :cond_1

    move v2, v0

    .line 174
    :goto_1
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v5

    int-to-float v2, v2

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 176
    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 177
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 178
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 179
    return-object v0

    :cond_0
    move v5, v0

    .line 172
    goto :goto_0

    :cond_1
    move v2, v1

    .line 173
    goto :goto_1
.end method

.method private a(ILandroid/view/animation/Animation;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x2

    .line 152
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 153
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    invoke-virtual {p0, v2}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->addView(Landroid/view/View;)V

    .line 160
    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 138
    iget v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->a:I

    iget v1, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->c:I

    const-string/jumbo v2, "clockwise"

    iget-object v3, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->a(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->a(ILandroid/view/animation/Animation;)V

    .line 140
    iget v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->b:I

    iget v1, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->d:I

    const-string/jumbo v2, "clockwise"

    iget-object v3, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->a(IZ)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->a(ILandroid/view/animation/Animation;)V

    .line 142
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 112
    const/high16 v0, 0x7f02

    iput v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->a:I

    .line 113
    const v0, 0x7f020001

    iput v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->b:I

    .line 114
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    const/16 v0, 0x2710

    .line 125
    iput v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->c:I

    .line 126
    iput v0, p0, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->d:I

    .line 127
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->removeAllViews()V

    .line 134
    invoke-direct {p0}, Lcom/nianticproject/ingress/ui/NemesisIndeterminateProgressBar;->d()V

    .line 135
    return-void
.end method
