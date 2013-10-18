.class final Lcom/nianticproject/ingress/common/missions/cg;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/cf;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/cf;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/cg;->a:Lcom/nianticproject/ingress/common/missions/cf;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/cg;->b:Ljava/lang/String;

    .line 285
    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cg;->a:Lcom/nianticproject/ingress/common/missions/cf;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/cf;->a:Lcom/nianticproject/ingress/common/missions/cc;

    new-instance v1, Lcom/nianticproject/ingress/common/missions/cd;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/cg;->a:Lcom/nianticproject/ingress/common/missions/cf;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/missions/cf;->a(Lcom/nianticproject/ingress/common/missions/cf;)Lcom/nianticproject/ingress/common/missions/cd;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/cg;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/cd;-><init>(Lcom/nianticproject/ingress/common/missions/cd;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/missions/cc;->a(Lcom/nianticproject/ingress/common/missions/cc;Lcom/nianticproject/ingress/common/missions/cd;)Lcom/nianticproject/ingress/common/missions/cd;

    .line 290
    return-void
.end method
