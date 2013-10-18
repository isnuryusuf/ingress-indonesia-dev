.class public interface abstract Lcom/nianticproject/ingress/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-array v0, v3, [Lcom/nianticproject/ingress/shared/rpc/s;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/s;->c:Lcom/nianticproject/ingress/shared/rpc/s;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/s;->a([Lcom/nianticproject/ingress/shared/rpc/s;)I

    move-result v0

    sput v0, Lcom/nianticproject/ingress/common/a;->a:I

    .line 20
    new-array v0, v3, [Lcom/nianticproject/ingress/shared/rpc/s;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/s;->b:Lcom/nianticproject/ingress/shared/rpc/s;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/s;->a([Lcom/nianticproject/ingress/shared/rpc/s;)I

    move-result v0

    sput v0, Lcom/nianticproject/ingress/common/a;->b:I

    .line 21
    new-array v0, v3, [Lcom/nianticproject/ingress/shared/rpc/s;

    sget-object v1, Lcom/nianticproject/ingress/shared/rpc/s;->a:Lcom/nianticproject/ingress/shared/rpc/s;

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/rpc/s;->a([Lcom/nianticproject/ingress/shared/rpc/s;)I

    move-result v0

    sput v0, Lcom/nianticproject/ingress/common/a;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/nianticproject/ingress/common/c;)V
.end method

.method public abstract a(Lcom/nianticproject/ingress/shared/plext/c;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;I)V
.end method

.method public abstract a(Ljava/lang/String;JI)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Lcom/nianticproject/ingress/common/c;)V
.end method

.method public abstract b(Ljava/lang/String;)V
.end method

.method public abstract b(Z)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract c(Z)V
.end method

.method public abstract e()Z
.end method
