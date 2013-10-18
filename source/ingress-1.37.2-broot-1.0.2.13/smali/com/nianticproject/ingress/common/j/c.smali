.class public final Lcom/nianticproject/ingress/common/j/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:[S

.field public final c:[S

.field public final d:Lcom/badlogic/gdx/graphics/VertexAttributes;

.field public final e:Lcom/nianticproject/ingress/common/j/b;


# direct methods
.method constructor <init>([F[S[S[Lcom/badlogic/gdx/graphics/VertexAttribute;Lcom/nianticproject/ingress/common/j/b;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/c;->a:[F

    .line 49
    iput-object p2, p0, Lcom/nianticproject/ingress/common/j/c;->b:[S

    .line 50
    iput-object p3, p0, Lcom/nianticproject/ingress/common/j/c;->c:[S

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    invoke-direct {v0, p4}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/c;->d:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 52
    iput-object p5, p0, Lcom/nianticproject/ingress/common/j/c;->e:Lcom/nianticproject/ingress/common/j/b;

    .line 53
    return-void
.end method
