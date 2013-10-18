.class public final Lcom/nianticproject/ingress/common/w/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Level;

.field private static b:Lcom/nianticproject/ingress/g/d;


# instance fields
.field private final c:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sput-object v0, Lcom/nianticproject/ingress/common/w/aa;->a:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/util/logging/Logger;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/util/logging/Logger;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/util/logging/Logger;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/nianticproject/ingress/common/w/aa;->c:Ljava/util/logging/Logger;

    .line 71
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/g/d;)Lcom/nianticproject/ingress/g/d;
    .locals 0
    .parameter

    .prologue
    .line 39
    .line 40
    sput-object p0, Lcom/nianticproject/ingress/common/w/aa;->b:Lcom/nianticproject/ingress/g/d;

    .line 41
    return-object p0
.end method

.method private a(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/aa;->c:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    :cond_0
    return-void
.end method

.method private a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    if-nez p3, :cond_1

    .line 359
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/aa;->c:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 366
    :goto_0
    sget-object v0, Lcom/nianticproject/ingress/common/w/aa;->b:Lcom/nianticproject/ingress/g/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/w/aa;->b:Lcom/nianticproject/ingress/g/d;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/g/d;->a(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Lcom/nianticproject/ingress/common/w/aa;->b:Lcom/nianticproject/ingress/g/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/nianticproject/ingress/g/d;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    :cond_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/aa;->c:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private varargs a(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/aa;->c:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    :cond_0
    return-void
.end method

.method private varargs a(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/aa;->c:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-direct {p0, p1, v0, p2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 330
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 93
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public final varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public final a(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/aa;->c:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0, p1, p3, p2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 163
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public final b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public final varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 203
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 213
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public final varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/util/logging/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    return-void
.end method
