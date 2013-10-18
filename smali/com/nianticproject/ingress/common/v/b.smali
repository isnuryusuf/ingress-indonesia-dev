.class final Lcom/nianticproject/ingress/common/v/b;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/v/c;

.field final synthetic b:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

.field final synthetic c:Lcom/nianticproject/ingress/common/v/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/v/a;Lcom/nianticproject/ingress/common/v/c;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/nianticproject/ingress/common/v/b;->c:Lcom/nianticproject/ingress/common/v/a;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/v/b;->a:Lcom/nianticproject/ingress/common/v/c;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/v/b;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

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
    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/common/v/b;->c:Lcom/nianticproject/ingress/common/v/a;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/v/b;->a:Lcom/nianticproject/ingress/common/v/c;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/v/b;->b:Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/v/a;->a(Lcom/nianticproject/ingress/common/v/a;Lcom/nianticproject/ingress/common/v/c;Lcom/badlogic/gdx/scenes/scene2d/ui/CheckBox;)V

    .line 132
    return-void
.end method
