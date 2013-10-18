.class final Lcom/nianticproject/ingress/common/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/w/ah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nianticproject/ingress/common/w/ah",
        "<",
        "Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/j/ab;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/j/ab;)V
    .locals 0
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/nianticproject/ingress/common/b/g;->a:Lcom/nianticproject/ingress/common/j/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 580
    check-cast p1, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/b/g;->a:Lcom/nianticproject/ingress/common/j/ab;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/j/ab;->a(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    return-void
.end method
