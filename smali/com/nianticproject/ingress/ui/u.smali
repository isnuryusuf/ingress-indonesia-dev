.class public final Lcom/nianticproject/ingress/ui/u;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:Ljava/lang/Object;

.field private static d:Lcom/nianticproject/ingress/ui/u;


# instance fields
.field private final e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/nianticproject/ingress/ui/u;->a:I

    .line 23
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/nianticproject/ingress/ui/u;->b:I

    .line 24
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/ui/u;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/u;->e:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/u;->f:Z

    return-void
.end method

.method public static a()Lcom/nianticproject/ingress/ui/u;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/nianticproject/ingress/ui/u;->d:Lcom/nianticproject/ingress/ui/u;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/nianticproject/ingress/ui/u;

    invoke-direct {v0}, Lcom/nianticproject/ingress/ui/u;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/ui/u;->d:Lcom/nianticproject/ingress/ui/u;

    .line 36
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/ui/u;->d:Lcom/nianticproject/ingress/ui/u;

    return-object v0
.end method

.method protected static a(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 89
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    sub-int v1, v3, v1

    .line 92
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 93
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 95
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 96
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 98
    const-class v0, Lcom/nianticproject/ingress/ui/w;

    invoke-interface {p1, v2, v3, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 100
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 101
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    .line 103
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 104
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 106
    if-gez v1, :cond_0

    .line 107
    sget-object v4, Lcom/nianticproject/ingress/ui/u;->c:Ljava/lang/Object;

    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 108
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    move v1, v0

    .line 112
    :cond_0
    if-le v1, v3, :cond_1

    .line 113
    const v0, 0x7fffffff

    move v1, v0

    .line 114
    :cond_1
    if-ge v0, v2, :cond_2

    .line 115
    const/4 v0, -0x1

    move v1, v0

    .line 117
    :cond_2
    const-class v2, Lcom/nianticproject/ingress/ui/w;

    invoke-interface {p1, v1, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/ui/w;

    .line 119
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_3
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/ui/w;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/ui/u;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/ui/u;->f:Z

    return v0
.end method


# virtual methods
.method public final onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 43
    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 45
    :pswitch_1
    iput-boolean v1, p0, Lcom/nianticproject/ingress/ui/u;->f:Z

    .line 47
    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/ui/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/nianticproject/ingress/ui/v;-><init>(Lcom/nianticproject/ingress/ui/u;Landroid/widget/TextView;Landroid/text/Spannable;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/u;->e:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget v5, Lcom/nianticproject/ingress/ui/u;->b:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sget v5, Lcom/nianticproject/ingress/ui/u;->a:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 60
    :pswitch_2
    iget-boolean v0, p0, Lcom/nianticproject/ingress/ui/u;->f:Z

    if-eqz v0, :cond_0

    .line 61
    iput-boolean v1, p0, Lcom/nianticproject/ingress/ui/u;->f:Z

    .line 62
    const/4 v0, 0x1

    goto :goto_1

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/u;->e:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
