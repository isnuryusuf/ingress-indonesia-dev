.class final Lcom/nianticproject/ingress/common/ui/widget/ai;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nianticproject/ingress/common/ui/widget/ah;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/ah;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ai;->b:Lcom/nianticproject/ingress/common/ui/widget/ah;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/widget/ai;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 74
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ai;->b:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-static {v0, v3}, Lcom/nianticproject/ingress/common/ui/widget/ah;->a(Lcom/nianticproject/ingress/common/ui/widget/ah;Z)Z

    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ai;->b:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/ah;->a(Lcom/nianticproject/ingress/common/ui/widget/ah;J)J

    .line 76
    return v3
.end method

.method public final touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ai;->b:Lcom/nianticproject/ingress/common/ui/widget/ah;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/widget/ah;->a(Lcom/nianticproject/ingress/common/ui/widget/ah;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ai;->b:Lcom/nianticproject/ingress/common/ui/widget/ah;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/ah;->a(Lcom/nianticproject/ingress/common/ui/widget/ah;J)J

    .line 84
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/ai;->b:Lcom/nianticproject/ingress/common/ui/widget/ah;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/ui/widget/ah;->a(Lcom/nianticproject/ingress/common/ui/widget/ah;Z)Z

    .line 85
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aO:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 86
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->F()Lcom/nianticproject/ingress/common/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ui/widget/ai;->a:Ljava/lang/String;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/ac;->d()V

    .line 89
    :cond_0
    return-void
.end method
