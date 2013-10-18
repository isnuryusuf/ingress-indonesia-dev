.class public Lcom/nianticproject/ingress/common/inventory/ui/o;
.super Lcom/nianticproject/ingress/common/inventory/ui/j;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/inventory/ui/p;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/p;Lcom/nianticproject/ingress/common/inventory/ui/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/nianticproject/ingress/common/inventory/ui/j;-><init>(Lcom/nianticproject/ingress/common/inventory/ui/n;Lcom/nianticproject/ingress/common/inventory/ui/i;)V

    .line 24
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/o;->a:Lcom/nianticproject/ingress/common/inventory/ui/p;

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Table;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 29
    const-string/jumbo v0, "large"

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    .line 34
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/o;->a:Lcom/nianticproject/ingress/common/inventory/ui/p;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/inventory/ui/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 35
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->o()Lcom/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/c;->k()Lcom/a/a/c;

    .line 38
    iget-object v1, p0, Lcom/nianticproject/ingress/common/inventory/ui/o;->a:Lcom/nianticproject/ingress/common/inventory/ui/p;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/inventory/ui/p;->e()Ljava/lang/String;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/nianticproject/ingress/common/inventory/ui/o;->a:Lcom/nianticproject/ingress/common/inventory/ui/p;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/inventory/ui/p;->d()I

    move-result v2

    .line 40
    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {p2, v0, v2}, Lcom/nianticproject/ingress/common/ui/l;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    .line 41
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    .line 42
    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c;->m()Lcom/a/a/c;

    .line 43
    return-void
.end method
