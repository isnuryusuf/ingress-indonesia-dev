.class final Lcom/nianticproject/ingress/common/scanner/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field final b:Lcom/nianticproject/ingress/common/scanner/a/ac;

.field c:F

.field d:J


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/ac;FJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ae;->b:Lcom/nianticproject/ingress/common/scanner/a/ac;

    .line 92
    invoke-virtual {p0, p2, p3, p4}, Lcom/nianticproject/ingress/common/scanner/a/ae;->a(FJ)V

    .line 93
    return-void
.end method


# virtual methods
.method final a(FJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput p1, p0, Lcom/nianticproject/ingress/common/scanner/a/ae;->c:F

    .line 97
    iput-wide p2, p0, Lcom/nianticproject/ingress/common/scanner/a/ae;->d:J

    .line 98
    return-void
.end method
