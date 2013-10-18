.class public final Lcom/nianticproject/ingress/common/q/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/q/c;

.field private final b:I

.field private final c:[B


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/q/c;I[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/nianticproject/ingress/common/q/d;->a:Lcom/nianticproject/ingress/common/q/c;

    .line 28
    iput p2, p0, Lcom/nianticproject/ingress/common/q/d;->b:I

    .line 29
    iput-object p3, p0, Lcom/nianticproject/ingress/common/q/d;->c:[B

    .line 30
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/nianticproject/ingress/common/q/d;->b:I

    return v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/d;->c:[B

    return-object v0
.end method
