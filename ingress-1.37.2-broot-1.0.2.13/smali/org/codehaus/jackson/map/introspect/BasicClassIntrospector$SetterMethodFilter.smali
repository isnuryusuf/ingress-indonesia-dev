.class public Lorg/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/codehaus/jackson/map/introspect/MethodFilter;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public includeMethod(Ljava/lang/reflect/Method;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    :goto_0
    return v0

    .line 314
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    .line 316
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 319
    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 329
    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
