.class public final Lcom/nianticproject/ingress/multiphotos/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/animation/Animation;

.field private final d:Landroid/view/animation/Animation;

.field private final e:Landroid/view/animation/Animation;

.field private final f:Landroid/view/animation/Animation;

.field private g:Lcom/nianticproject/ingress/multiphotos/c;

.field private h:Lcom/nianticproject/ingress/multiphotos/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/c;->a:Lcom/nianticproject/ingress/multiphotos/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->g:Lcom/nianticproject/ingress/multiphotos/c;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->h:Lcom/nianticproject/ingress/multiphotos/c;

    .line 51
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->a:Landroid/view/View;

    .line 52
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->b:Landroid/view/View;

    .line 54
    const v0, 0x7f040003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->c:Landroid/view/animation/Animation;

    .line 56
    const v0, 0x7f040002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->d:Landroid/view/animation/Animation;

    .line 58
    const v0, 0x7f040001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->e:Landroid/view/animation/Animation;

    .line 60
    const/high16 v0, 0x7f04

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->f:Landroid/view/animation/Animation;

    .line 62
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/c;->b:Lcom/nianticproject/ingress/multiphotos/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->g:Lcom/nianticproject/ingress/multiphotos/c;

    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/a;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/a;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/c;->d:Lcom/nianticproject/ingress/multiphotos/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->g:Lcom/nianticproject/ingress/multiphotos/c;

    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/a;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/a;->f:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/b;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/a;->g:Lcom/nianticproject/ingress/multiphotos/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/multiphotos/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 103
    :pswitch_0
    invoke-direct {p0}, Lcom/nianticproject/ingress/multiphotos/a;->b()V

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-direct {p0}, Lcom/nianticproject/ingress/multiphotos/a;->c()V

    goto :goto_0

    .line 109
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/c;->a:Lcom/nianticproject/ingress/multiphotos/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->h:Lcom/nianticproject/ingress/multiphotos/c;

    goto :goto_0

    .line 112
    :pswitch_3
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/c;->c:Lcom/nianticproject/ingress/multiphotos/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->h:Lcom/nianticproject/ingress/multiphotos/c;

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 119
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/b;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/a;->g:Lcom/nianticproject/ingress/multiphotos/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/multiphotos/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->h:Lcom/nianticproject/ingress/multiphotos/c;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/b;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/multiphotos/a;->h:Lcom/nianticproject/ingress/multiphotos/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/multiphotos/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 140
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->h:Lcom/nianticproject/ingress/multiphotos/c;

    .line 142
    :cond_0
    return-void

    .line 121
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/c;->a:Lcom/nianticproject/ingress/multiphotos/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->g:Lcom/nianticproject/ingress/multiphotos/c;

    goto :goto_0

    .line 124
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/multiphotos/c;->c:Lcom/nianticproject/ingress/multiphotos/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->g:Lcom/nianticproject/ingress/multiphotos/c;

    .line 125
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/nianticproject/ingress/multiphotos/a;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 133
    :pswitch_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/multiphotos/a;->c()V

    goto :goto_1

    .line 136
    :pswitch_3
    invoke-direct {p0}, Lcom/nianticproject/ingress/multiphotos/a;->b()V

    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 131
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    return-void
.end method
