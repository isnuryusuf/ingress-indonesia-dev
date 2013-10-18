.class public abstract Lcom/nianticproject/ingress/common/scanner/visuals/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/j/m;
.implements Lcom/nianticproject/ingress/common/j/o;


# static fields
.field private static final a:[F

.field private static final b:[S

.field private static final c:Lcom/nianticproject/ingress/common/j/an;

.field private static final d:Lcom/nianticproject/ingress/common/j/am;


# instance fields
.field private e:Lcom/nianticproject/ingress/common/j/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/e;->a:[F

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/e;->b:[S

    .line 37
    new-instance v0, Lcom/nianticproject/ingress/common/j/an;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/e;->a:[F

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x2

    const-string/jumbo v5, "a_position"

    invoke-direct {v3, v6, v4, v5}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/common/j/an;-><init>([F[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/e;->c:Lcom/nianticproject/ingress/common/j/an;

    .line 40
    new-instance v0, Lcom/nianticproject/ingress/common/j/am;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/e;->b:[S

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/j/am;-><init>([S)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/e;->d:Lcom/nianticproject/ingress/common/j/am;

    return-void

    .line 25
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 32
    :array_1
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x0t 0x0t
        0x2t 0x0t
        0x3t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/j/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/visuals/e;->e:Lcom/nianticproject/ingress/common/j/ad;

    .line 84
    return-void
.end method

.method static synthetic e()Lcom/nianticproject/ingress/common/j/an;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/e;->c:Lcom/nianticproject/ingress/common/j/an;

    return-object v0
.end method

.method static synthetic f()Lcom/nianticproject/ingress/common/j/am;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/e;->d:Lcom/nianticproject/ingress/common/j/am;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/e;->e:Lcom/nianticproject/ingress/common/j/ad;

    invoke-virtual {p3, v0, p0}, Lcom/nianticproject/ingress/common/j/n;->a(Lcom/nianticproject/ingress/common/j/ad;Lcom/nianticproject/ingress/common/j/m;)V

    .line 89
    return-void
.end method

.method public a(Lcom/nianticproject/ingress/common/j/af;)V
    .locals 5
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/4 v1, 0x4

    sget-object v2, Lcom/nianticproject/ingress/common/scanner/visuals/e;->b:[S

    array-length v2, v2

    const/16 v3, 0x1403

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glDrawElements(IIII)V

    .line 94
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public a(F)Z
    .locals 1
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
