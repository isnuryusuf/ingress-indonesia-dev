.class final Lcom/nianticproject/ingress/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

.field private b:J


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/ui/CollapsibleLayout;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/ui/j;-><init>(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->d()V

    .line 85
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nianticproject/ingress/ui/j;->b:J

    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->c()V

    goto :goto_0
.end method

.method public final run()V
    .locals 5

    .prologue
    const/high16 v4, 0x447a

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 29
    iget-wide v2, p0, Lcom/nianticproject/ingress/ui/j;->b:J

    sub-long v2, v0, v2

    .line 32
    iput-wide v0, p0, Lcom/nianticproject/ingress/ui/j;->b:J

    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->c(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v1

    div-float/2addr v1, v4

    long-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a(Lcom/nianticproject/ingress/ui/CollapsibleLayout;F)F

    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;F)F

    .line 49
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->d(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v2}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v2

    iget-object v3, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v3}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;F)F

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 57
    :goto_1
    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->requestLayout()V

    .line 59
    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->d(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->f()V

    .line 73
    :goto_2
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->c(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v1

    div-float/2addr v1, v4

    long-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->c(Lcom/nianticproject/ingress/ui/CollapsibleLayout;F)F

    .line 43
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    iget-object v1, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-static {v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->a(Lcom/nianticproject/ingress/ui/CollapsibleLayout;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->b(Lcom/nianticproject/ingress/ui/CollapsibleLayout;F)F

    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->e()V

    goto :goto_2

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/ui/j;->a:Lcom/nianticproject/ingress/ui/CollapsibleLayout;

    invoke-virtual {v0, p0}, Lcom/nianticproject/ingress/ui/CollapsibleLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
