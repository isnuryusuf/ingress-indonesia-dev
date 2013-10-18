.class public final Lcom/nianticproject/ingress/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/animation/TranslateAnimation;

.field private final c:Landroid/view/animation/TranslateAnimation;

.field private d:Lcom/nianticproject/ingress/ui/i;

.field private e:Lcom/nianticproject/ingress/ui/i;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/g;->a:Landroid/view/View;

    .line 43
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/g;->b:Landroid/view/animation/TranslateAnimation;

    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/g;->b:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/g;->b:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 50
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/g;->c:Landroid/view/animation/TranslateAnimation;

    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/g;->c:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/g;->c:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 57
    sget-object v0, Lcom/nianticproject/ingress/ui/i;->d:Lcom/nianticproject/ingress/ui/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/g;->d:Lcom/nianticproject/ingress/ui/i;

    .line 58
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "show"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/nianticproject/ingress/ui/h;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/g;->d:Lcom/nianticproject/ingress/ui/i;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/ui/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    :pswitch_0
    return-void

    .line 72
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/g;->e:Lcom/nianticproject/ingress/ui/i;

    .line 73
    sget-object v0, Lcom/nianticproject/ingress/ui/i;->a:Lcom/nianticproject/ingress/ui/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/g;->d:Lcom/nianticproject/ingress/ui/i;

    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/g;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/g;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/g;->b:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/ui/i;->b:Lcom/nianticproject/ingress/ui/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/g;->e:Lcom/nianticproject/ingress/ui/i;

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 88
    const-string/jumbo v0, "hide"

    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/nianticproject/ingress/ui/h;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/g;->d:Lcom/nianticproject/ingress/ui/i;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/ui/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    :pswitch_0
    return-void

    .line 96
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/g;->e:Lcom/nianticproject/ingress/ui/i;

    .line 97
    sget-object v0, Lcom/nianticproject/ingress/ui/i;->c:Lcom/nianticproject/ingress/ui/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/g;->d:Lcom/nianticproject/ingress/ui/i;

    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/g;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/g;->c:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 102
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/ui/i;->d:Lcom/nianticproject/ingress/ui/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/g;->e:Lcom/nianticproject/ingress/ui/i;

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0xfa

    .line 113
    sget-object v0, Lcom/nianticproject/ingress/ui/h;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/g;->d:Lcom/nianticproject/ingress/ui/i;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/ui/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/g;->e:Lcom/nianticproject/ingress/ui/i;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/nianticproject/ingress/ui/h;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/g;->e:Lcom/nianticproject/ingress/ui/i;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/ui/i;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 137
    :cond_0
    :goto_1
    :pswitch_1
    return-void

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/g;->c:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/g;->c:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/g;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    sget-object v0, Lcom/nianticproject/ingress/ui/i;->d:Lcom/nianticproject/ingress/ui/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/g;->d:Lcom/nianticproject/ingress/ui/i;

    goto :goto_0

    .line 123
    :pswitch_3
    sget-object v0, Lcom/nianticproject/ingress/ui/i;->b:Lcom/nianticproject/ingress/ui/i;

    iput-object v0, p0, Lcom/nianticproject/ingress/ui/g;->d:Lcom/nianticproject/ingress/ui/i;

    goto :goto_0

    .line 130
    :pswitch_4
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/g;->b()V

    goto :goto_1

    .line 133
    :pswitch_5
    invoke-virtual {p0}, Lcom/nianticproject/ingress/ui/g;->a()V

    goto :goto_1

    .line 113
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 128
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    return-void
.end method
