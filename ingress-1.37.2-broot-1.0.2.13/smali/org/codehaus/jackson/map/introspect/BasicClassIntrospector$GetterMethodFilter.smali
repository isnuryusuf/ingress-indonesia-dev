.class public Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/introspect/MethodFilter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$1;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    invoke-direct {p0}, Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public includeMethod(Ljava/lang/reflect/Method;)Z
    .locals 1
    .parameter

    .prologue
    .line 288
    invoke-static {p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->hasGetterSignature(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method
