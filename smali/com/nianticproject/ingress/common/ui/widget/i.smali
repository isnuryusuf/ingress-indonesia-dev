.class final Lcom/nianticproject/ingress/common/ui/widget/i;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/widget/h;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/h;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/i;->a:Lcom/nianticproject/ingress/common/ui/widget/h;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/widget/i;->a:Lcom/nianticproject/ingress/common/ui/widget/h;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/ui/widget/h;->a(Lcom/nianticproject/ingress/common/ui/widget/h;J)J

    .line 80
    const/4 v0, 0x0

    return v0
.end method
