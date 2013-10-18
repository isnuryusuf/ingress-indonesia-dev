.class public final Lcom/nianticproject/ingress/common/scanner/visuals/cy;
.super Lcom/nianticproject/ingress/common/j/r;
.source "SourceFile"


# static fields
.field private static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/nianticproject/ingress/common/j/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Lcom/badlogic/gdx/utils/FloatArray;

.field private final f:Lcom/badlogic/gdx/utils/FloatArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/cz;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/cz;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->g:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/r;-><init>()V

    .line 19
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->e:Lcom/badlogic/gdx/utils/FloatArray;

    .line 20
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->f:Lcom/badlogic/gdx/utils/FloatArray;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->a:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->g:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 54
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->e:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 55
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->f:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/j/r;->a(Lcom/badlogic/gdx/math/Matrix4;Lcom/nianticproject/ingress/common/j/f;Lcom/nianticproject/ingress/common/j/n;)V

    .line 57
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/visuals/cv;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p1, p0}, Lcom/nianticproject/ingress/common/scanner/visuals/cv;->a(Lcom/nianticproject/ingress/common/scanner/visuals/cy;)V

    .line 49
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/scanner/visuals/da;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;->a:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;->c:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    if-ne p1, v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->e:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 67
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;->b:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/nianticproject/ingress/common/scanner/visuals/da;->c:Lcom/nianticproject/ingress/common/scanner/visuals/da;

    if-ne p1, v0, :cond_3

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->f:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 70
    :cond_3
    return-void
.end method

.method public final b()Lcom/badlogic/gdx/utils/FloatArray;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->e:Lcom/badlogic/gdx/utils/FloatArray;

    return-object v0
.end method

.method public final b(Lcom/nianticproject/ingress/common/j/o;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final c()Lcom/badlogic/gdx/utils/FloatArray;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/visuals/cy;->f:Lcom/badlogic/gdx/utils/FloatArray;

    return-object v0
.end method
