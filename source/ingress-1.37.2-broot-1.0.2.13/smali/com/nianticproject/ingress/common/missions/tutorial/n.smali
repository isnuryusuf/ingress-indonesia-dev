.class final Lcom/nianticproject/ingress/common/missions/tutorial/n;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/m;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/m;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/n;->a:Lcom/nianticproject/ingress/common/missions/tutorial/m;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/n;->a:Lcom/nianticproject/ingress/common/missions/tutorial/m;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/tutorial/m;->a:Lcom/nianticproject/ingress/common/missions/tutorial/l;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/l;->b(Lcom/nianticproject/ingress/common/missions/tutorial/l;)Lcom/nianticproject/ingress/common/ac;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/missions/tutorial/o;

    const-string/jumbo v2, "PhotoFilename"

    invoke-direct {v1, p0, v2}, Lcom/nianticproject/ingress/common/missions/tutorial/o;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/n;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/ac;->a(Lcom/google/a/a/ba;)V

    .line 70
    return-void
.end method
