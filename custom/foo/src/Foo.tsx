export type FooProps = {
	fooName: string
};

export default function Foo(props: FooProps) {
	return (
		<div>
			<h2>Here's a foo {props.fooName}</h2>
		</div>
	)
}