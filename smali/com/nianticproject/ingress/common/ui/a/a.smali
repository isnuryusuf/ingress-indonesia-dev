.class public final Lcom/nianticproject/ingress/common/ui/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;F)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    new-instance v0, Lcom/nianticproject/ingress/common/ui/a/f;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/a/f;-><init>(Lcom/nianticproject/ingress/common/ui/widget/ScrollLabel;)V

    new-instance v1, Lcom/nianticproject/ingress/common/ui/a/e;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/ui/a/e;-><init>()V

    invoke-static {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(FLcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v0

    return-object v0
.end method
