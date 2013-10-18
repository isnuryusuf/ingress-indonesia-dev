.class final Lcom/nianticproject/ingress/common/missions/bz;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/bp;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/bz;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/bz;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/bp;->f(Lcom/nianticproject/ingress/common/missions/bp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/ca;

    .line 567
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/bz;->a:Lcom/nianticproject/ingress/common/missions/bp;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/co;->a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;

    move-result-object v0

    sget-object v3, Lcom/nianticproject/ingress/common/missions/ck;->e:Lcom/nianticproject/ingress/common/missions/ck;

    invoke-static {v2, v0, v3}, Lcom/nianticproject/ingress/common/missions/bp;->a(Lcom/nianticproject/ingress/common/missions/bp;Lcom/nianticproject/ingress/common/model/a/i;Lcom/nianticproject/ingress/common/missions/ck;)V

    goto :goto_0

    .line 569
    :cond_0
    return-void
.end method
